
if(document.querySelector('.link-banner')){
const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
      const text = document.querySelectorAll('.banner-item .text');
      
      
      if (entry.isIntersecting) {
          text.forEach(element => {
              
              
              element.classList.add('slide-in-animation');
          });
       
        return; // if we added the class, exit the function
      }
  
      // We're not intersecting, so remove the class!
      text.forEach(element => {
              
        element.classList.remove('slide-in-animation');
    });
      
     
    });
  });
  
  observer.observe(document.querySelector('.link-banner'));
}


if(document.querySelector('.a-links')){
  const observer2 = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        const items = document.querySelectorAll('.a-links');
        
        
        if (entry.isIntersecting) {
            items.forEach(element => {
                
                
                element.classList.add('fadeIn');
            });
         
          return; // if we added the class, exit the function
        }
    
        // We're not intersecting, so remove the class!
  /*       items.forEach(element => {
                
          element.classList.remove('fadeIn');
      }); */
        
       
      });
    });
    
    observer2.observe(document.querySelector('.a-links'));
  }

  if(document.querySelector('.text-section')){
    const observer3 = new IntersectionObserver(entries => {
        entries.forEach(entry => {
          const items = document.querySelectorAll('.text-section .episode');
          const items2 = document.querySelectorAll('.text-section .episode__number');
          
          
          if (entry.isIntersecting) {
              items.forEach(element => {
                  
                  
                  element.classList.add('fade-in-up');
              });

              setTimeout(() => {

                items2.forEach(element => {
                  
                  
                  element.classList.add('fade-in-up');
              });
                
              }, 300);

            
           
            return; // if we added the class, exit the function
          }
      
          // We're not intersecting, so remove the class!
    /*       items.forEach(element => {
                  
            element.classList.remove('fadeIn');
        }); */
          
         
        });
      });
      
      observer3.observe(document.querySelector('.text-section'));
    }

