def transform(legacy_data):
    output_dict={}
    
    for key, value in legacy_data.items():
        for character in value:
            output_dict[character.lower()] = key

    return output_dict
