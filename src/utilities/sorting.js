import {expect} from "chai";

class sorting{


//this method sort values by ascending order
    async SortInAscendingOrder(arr){
        // this method take array as parameter
        return arr.sort(function (a,b) {
            return a > b;
        });
    }
//this method sort values by ascending order
   async SortInDescendingOrder(arr){
       // this method take array as parameter
        return arr.sort(function (a,b) {
            return a < b;
        });
    }
  // sort date in Ascending order
    async SortDateInAcsendingOrder(arr){
        arr.sort(function(a,b){
            // Turn your strings into dates, and then subtract them
            // to get a value that is either negative, positive, or zero.
            return  new Date(a) - new Date(b);
        });
    }
    // sort date in Desendind order
    async SortDateInDesendingOrder(arr){
        arr.sort(function(a,b){
            // Turn your strings into dates, and then subtract them
            // to get a value that is either negative, positive, or zero.
            return  new Date(a) - new Date(b);
        });
    }

    async copyOfArray(givenArray){
        const orignalValues = [];
        for(let i=0;i < givenArray.length;i++){
            orignalValues[i] = await givenArray[i];
        }
        return orignalValues;
    }

    async verifyValuesInAscendingOrder(page,Values){
        const orignalValues = await this.copyOfArray(Values);
        for (let index=0;index<orignalValues.length;index++){
            await console.log("orignal Values:"+orignalValues[index]);
        }
        let SortedByAsc = await Values.sort((a, b) => a.localeCompare(b, undefined, {sensitivity: 'base'}));
        for (let index=0;index<orignalValues.length;index++){
            await console.log("sorted Values:"+orignalValues[index]);
        }

        let isEqual= await JSON.stringify(orignalValues)==JSON.stringify(SortedByAsc);
        await console.log("ascending status :"+isEqual)
        expect(isEqual).to.equal(true);
    }

    async verifyValuesInDescendingOrder(page,Values){
        const orignalValues = await this.copyOfArray(Values);
        let sortByDesc= await Values.sort((a, b) => a.localeCompare(b, undefined, {sensitivity: 'base'}));
        await sortByDesc.reverse();
        let isEqual= await JSON.stringify(orignalValues)===JSON.stringify(sortByDesc);
        await console.log("descending status :"+isEqual)
        expect(isEqual).to.equal(true);
    }
    async verifyDatesInDescendingorder(page,CreatedDates){
        let DescendingDates = [];
        for (let i=0;i < CreatedDates.length;i++){
            DescendingDates[i] = CreatedDates[i];
            //originalDates[i] = [{date:projectCreatedDates[i]}];
        }
        DescendingDates.sort(function(a,b){
            // Turn your strings into dates, and then subtract them
            // to get a value that is either negative, positive, or zero.
            return  new Date(b) - new Date(a);
        });
        await DescendingDates.map((id)=> console.log("after descending"+id));
        const isEqual= await JSON.stringify(CreatedDates)==JSON.stringify(DescendingDates);
        expect(isEqual).to.be.true;
    }

    async verifyDatesInAscendingOrder(page,CreatedDates){
        let AscendingDates = [];
        for (let i=0;i < CreatedDates.length;i++){
            AscendingDates[i] = CreatedDates[i];
            //originalDates[i] = [{date:projectCreatedDates[i]}];
        }
        AscendingDates.sort(function(a,b){
            // Turn your strings into dates, and then subtract them
            // to get a value that is either negative, positive, or zero.
            return  new Date(a) - new Date(b);
        });
        await AscendingDates.map((id)=> console.log(id));
        const isEqual= await JSON.stringify(CreatedDates)==JSON.stringify(AscendingDates);
        expect(isEqual).to.be.true;
    }
}

export default new sorting()