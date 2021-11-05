temperature_converter = function(){ 
  count = 0
  while (count == 0){ 
    a = as.integer(readline(prompt = 'Enter the conversion step, 1 for cels, 2 for kelvin, 3 for farh, 0 to quit:'))
    if (a == 1){
      print('Accessing Celsius/ Kelvin conversion')
      a = as.integer(readline(prompt = 'Enter the Temperature:')) 
      to_kelvin = a + 273.15
      print(paste('If Celsius are', a,'°',',then kelvins are',to_kelvin))
      
    } else if (a == 2){
      print('Accessing Fahrenheit/Celsius conversion')
      a = as.integer(readline(prompt = 'Enter the Temperature:')) 
      to_celsius = (a-32)*5/9
      print(paste('If Farh are', a,'°',',then Celsius are',to_celsius))
      
    } else if (a == 3){
      print('Accessing Fahrenheit/ Kelvin conversion')
      a = as.integer(readline(prompt = 'Enter the Temperature:'))
      farh_to_kelvin = (a-32)*5/9 + 273.15
      print(paste('If Farh are', a,'°',',then kelvins are', farh_to_kelvin))
      
    } else if (a == 0 & count == 0){
      
      count = count + 2
      
      
    } else{
      
      print('Your selection does not match any step, please try again')
    }
    count = count + 1
    
    if (count >= 2){
     # it needs to stop the next chunk 
      stop('Closing...')
    } else{
      next
    }
  }
  
  b = as.integer(readline(prompt = 'Do you want to convert again? 1 for yes, 2 for no:'))
  if (b == 1){
    temperature_switch()
    
  }else if (b == 2){
    print('Have a nice day')
    
  }
}

temperature_converter()