import { Controller } from 'stimulus'
 
export default class extends Controller {
    static targets = ['content', 'nextbody']
 
 changeBack() {
    const randomNumber = Math.floor(Math.random() * 7) + 1;
    const aux_text = this.contentTarget.value.toLowerCase()
   

    if(aux_text.search("mconf") == -1)
      this.nextbodyTarget.parentNode.className = "backColor" + 0
    else    
      this.nextbodyTarget.parentNode.className = "backColor" + randomNumber.toString()
   }
 
}