close all; clear all; clc

%Call main function
main()


%Functions
%---------------------------------------------------------------------------
function someOutput = main()
    %Initialize
    membersToAdd = {'Kevin','Kasper','Marcus'};
    memberBalance = struct('Nick',0);

    currentMemberBalance = addMember(memberBalance,membersToAdd);
   
    %Add balance
    updateAmount = 10;
    updater = 'Nick';
    owners = {'Marcus','Kevin'};
    updatedBalance = updateBalance(updateAmount,updater,owners,currentMemberBalance);
    
    %To cmd win
    someOutput = updatedBalance;
end


%Function updates the current member balance
%Input: "amount"         [double value for the amount the updater needs]
%Input: "updater"        [string value for the name of the updater]
%Input: "owners"         [string array with the owners names]
%Output "UpdatedBalance" [struct with the updated balance]
function currentMemberBalance = updateBalance(amount,updater,owners,currentMemberBalance)
    numberOfOwners = length(owners);    
    splitAmount = amount/numberOfOwners;   

    for i = 1:numberOfOwners
        currentMemberBalance.(owners{i}) = currentMemberBalance.(owners{i}) - splitAmount;
        currentMemberBalance.(updater) = currentMemberBalance.(updater) + splitAmount;
    end

end

%Function adds a member to list 
%Input:  "memberBalance" [struct with current members and their balance]
%Input:  "membersToAdd"  [string array with members to add]
%Output: "members"       [struct with updated member list]
function members = addMember(memberBalance,membersToAdd)
    currentMemberBalance = memberBalance;  

    for i = 1:length(membersToAdd)
        currentMemberBalance.(membersToAdd{i}) = 0;
    end

    members = currentMemberBalance;
end










