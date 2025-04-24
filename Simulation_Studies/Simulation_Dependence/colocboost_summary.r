colocboost_summary = function(true_variant, true_trait, coloc_set, coloc_trait){
    
    if(length(coloc_set) == 0){
        coloc_set = NULL
    }
    coloc_trait_vector = coloc_trait_vec(true_variant, true_trait, coloc_set, coloc_trait)

    true_trait_vector = true_trait_vec(true_variant, true_trait)
    
    coloc_set_vector = coloc_set_vec(true_variant, true_trait,coloc_set, coloc_trait)
    
    total_causal_var_number = length(true_variant)
    perfect_causal_var_number = perfect_number(coloc_trait_vector, true_trait_vector )
    partial_causal_var_number = partial_number(coloc_trait_vector, true_trait_vector)
    true_trait_number = sum(coloc_trait_vector)
    total_trait_number = sum(true_trait_vector)
    true_set_number = sum(coloc_set_vector)
    total_set_number = length(coloc_set_vector)
    set_sizes = c()
    for(i in c(1:length(coloc_set))){
        set_sizes[i] = length(coloc_set[[i]])
    }
    
    ### ture_trait : in the prediction, which are correct
    ### predict_trait : the total numbe rof predicted traits (some of the sets will be wrong!)
        
    return(list(total_causal_var_number = total_causal_var_number, 
                perfect_causal_var_number = perfect_causal_var_number, 
                partial_causal_var_number = partial_causal_var_number,
                true_trait_number = true_trait_number, 
                predict_trait_number = length(unlist(coloc_trait)),
                total_trait_number = total_trait_number, 
                true_set_number = true_set_number, 
                total_set_number = total_set_number,
                set_sizes = set_sizes))
}



coloc_trait_vec = function(true_variant, true_trait, coloc_set, coloc_trait){
    var_num = length(true_variant)
    ## initialize 0 vector for each true variant   
    my_vector <- numeric(var_num)
    # loop for every ture_causal_variant
    for(i in 1:var_num){
    # loop for every colocalization set result to see which true_snp is in the set
        for (j in 1:length(coloc_set)){
            if(true_variant[i] %in% unlist(coloc_set[[j]])){
                # if coloc trait has more than true trait, set as 0 (stringent)
                difference = setdiff(coloc_trait[[j]], true_trait[[i]])
                if(length(difference) > 0){
                    my_vector[i] = max(my_vector[i], 0)
                }else{
                    # check the number of elements that is intersection
                    intersect_length = length(intersect(coloc_trait[[j]], true_trait[[i]]))
                    my_vector[i] = max(my_vector[i], intersect_length)
                } 
            
            }
                
        }
    }
    
    return(my_vector)
}

true_trait_vec = function(true_variant, true_trait){  
    var_num = length(true_variant)
    my_vector <- numeric(var_num)
    # how many traits are in each true trait set
    for(i in 1:var_num){
        my_vector[i] = length(true_trait[[i]])
    }
    return(my_vector)
}

coloc_set_vec = function(true_variant, true_trait, coloc_set, coloc_trait){
    set_num = length(coloc_set)
    ## initialize 0 vector for each coloc set   
    my_vector <- numeric(set_num)
    # loop for every ture_causal_variant
    for(i in 1:length(true_variant)){
    # loop for every colocalization set result to see which true_snp is in the set
        for (j in 1:set_num){
            # use the same index as the coloc_set to find corresponding coloc_traits for that set,
            # see how many traits are successfully captured
            if(true_variant[i] %in% unlist(coloc_set[[j]])){
                difference = setdiff(coloc_trait[[j]], true_trait[[i]])
                if(length(difference) > 0){
                    my_vector[j] = max(my_vector[j], 0)
                }else{
                    my_vector[j] = max(my_vector[j], 1)
                } 
            
            }
                
        }
    }
    
    return(my_vector)
}

perfect_number = function(coloc_trait_vector, true_trait_vector){
    perfect_match_number = 0
    for (i in 1:length(coloc_trait_vector)){
        if(coloc_trait_vector[i] == true_trait_vector[i]){
            perfect_match_number = perfect_match_number + 1
        }
    
    }
    return(perfect_match_number)
}

partial_number = function(coloc_trait_vector, true_trait_vector){
    partial_match_number = 0
    for (i in 1:length(coloc_trait_vector)){
        if(coloc_trait_vector[i] > 0){
            partial_match_number = partial_match_number + 1
        }
    
    }
    return(partial_match_number)

}

