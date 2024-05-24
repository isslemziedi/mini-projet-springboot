//get transaction type;
const transactType = document.querySelector("#transact-type");
//get transaction forms:
const paymentCard = document.querySelector(".payment-card");
const enrollmentCard = document.querySelector(".enrollment-card");
const refundCard = document.querySelector(".refund-card");
const completionCard = document.querySelector(".completion-card")


transactType.addEventListener("change",() =>{
    //check for transaction type and display form:
    switch(transactType.value){
        case "payment" :
            paymentCard.style.display = "block";
            paymentCard.nextElementSibling.style.display = "none";
            refundCard.style.display = "none";
            completionCard.style.display = "none";
            break;

        case "enrollment" :
            enrollmentCard.previousElementSibling.style.display = "none";
            enrollmentCard.style.display= "block";
            enrollmentCard.nextElementSibling.style.display = "none";
            completionCard.style.display = "none";
            break;
        
        case "refund" :
            paymentCard.style.display = "none";
            refundCard.previousElementSibling.style.display = "none";
            refundCard.style.display= "block";
            refundCard.nextElementSibling.style.display = "none";
        break;

        case "completion" :
            paymentCard.style.display = "none";
            enrollmentCard.style.display= "none";
            completionCard.previousElementSibling.style.display = "none";
            completionCard.style.display= "block";
        break;

        default:
            paymentCard.style.display = "none";
            enrollmentCard.style.display = "none";
            refundCard.style.display= "none";
            completionCard.style.display= "none";
            break;
    }
});