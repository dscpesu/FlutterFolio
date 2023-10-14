#include<stdio.h>
#include<stdlib.h>
struct node {
    int data;
    struct node* next;
};
void insert_before_last(struct node**head,int value)
{
    struct node*temp=(struct node*)malloc(sizeof(struct node));
    if(!temp)
    {
        printf("Memory allocation failed\n");
        return;
    }
    temp->data=value;
    temp->next=NULL;
    if (*head == NULL || (*head)->next == NULL) {
        printf("List is empty or has only one node. Cannot insert before the last node.\n");
        return;
    }
    struct node*itr=*head;
    while(itr->next->next)
    {
        itr=itr->next;
    }
    temp->next=itr->next;
    itr->next=temp;
}
void insert_at_beginning(struct node** head,int value)
{
    struct node*temp=(struct node*)malloc(1*sizeof(struct node));
    //checking if memory allocation failed or not
    if(!temp)
    {
        printf("Memory allocation failed");
        return;
    }
    temp->data=value;
    temp->next=*head;//head is NULL so there is no next node 
    *head=temp;
    return;
}
void insert_at_end(struct node** head,int value)
{
    struct node*temp=(struct node*)malloc(1*sizeof(struct node));
    if(!temp)
    {
        printf("Memory allocation failed");
        return;
    }
    temp->data=value;
    if(!(*head))
    {
        temp->next=*head;
        *head=temp;
        return;
    }
    struct node *itr = *head;
    while(itr->next)
    itr=itr->next;
    temp->next=itr->next;
    itr->next=temp;
    return;
}
void insert_before_k(struct node** head,int value,int k)
{
    struct node*temp=(struct node*)malloc(1*sizeof(struct node));
    if(!temp)
    {
        printf("Memory allocation failed");
        return;
    }
    temp->data=value;
    if(!(*head))
    {
        temp->next=*head;
        *head=temp; 
        return;
    }
    if((*head)->data==k)
    {
        temp->next=*head;
        *head=temp;
        return;
    }
    struct node*itr=*head;
    while(itr->next)
    {
        if(itr->next->data == k)
        {
            temp->next=itr->next;
            itr->next=temp;
            return;
        }
        itr=itr->next;
    }
    //inserting at the end when node not found
    printf("\n%d is not found so %d is inserted in end",k,value);
    temp->next=itr->next;
    itr->next=temp;
}
void insert_after_k(struct node** head,int value, int k)
{
    struct node*temp=(struct node*)malloc(1*sizeof(struct node));
    if(!temp)
    {
        printf("Memory allocation failed");
        return;
    }
    temp->data=value;
    if(!(*head))
    {
        temp->next=*head;
        *head=temp;
        return;
    }
    struct node*itr=*head;
    while(itr)
    {
        if(itr->data==k)
        {
            temp->next=itr->next;
            itr->next=temp;
            return;
        }
        itr=itr->next;
    }
    //inserting at the end when node not found
    printf("%d is not found so %d is inserted at the end\n",k,value);
    temp->next = itr->next;
    itr->next  = temp ;
}
void delete_by_value(struct node** head,int k)
{
   if(!(*head))
   {
        printf("\nEmpty list");
        return;
   }
   struct node*temp=NULL,*itr=*head;
   if((*head)->data==k)
   {
    *head=temp;
    free(itr);
    return;
   }
   while(itr->next)
   {
    if(itr->next->data==k)
    {
        temp=itr->next;
        itr->next=temp->next;
        free(temp);
        return;
    }
    itr=itr->next;
   }
   printf("Node with value %d not found\n",k );
}  
void delete_by_address(struct node**head, struct node* k )
{
    if((*head)==NULL||k==NULL);//either list is empty or invalid input
    {
        printf("Either list is empty or Invalid input");
        return;
    }
    struct node*temp=*head;
    //if first element to be deleted then change pointer of head and deallocate memory for that node
    if((*head)==k)
    {
        *head=(*head)->next;
        free(temp);//free(k)
        return;
    }
    //traversing till we find previous node whose next points to address of current node which needs deletion
    while((temp->next != NULL && (temp->next)!=k ))
    {
        temp=temp->next;
    }
    if(!(temp->next))
    {
        return;
    }
    temp->next=k->next;
    free(k);
}
void delete_head(struct node** head)
{
    //checking whether list is empty or not
    if(!(*head))
    {
        printf("\nEmpty list\n");
        return;
    }
    struct node*temp=*head;
    //changing the pointer of head to point at second node in linkedlist
    *head=(*head)->next;
    free(temp);//freeing the first node
}
void delete_tail(struct node** head)
{
    //checking whether list is empty or not
    if(!(*head))//or you can write it as *head==NULL
    {
        printf("\nEmpty list\n");
        return;
    }
    struct node*temp=NULL;
    //if there is only one node
    if(!((*head)->next))
    {
        temp=*head;
        *head=NULL;
        free(temp);
        return;
    }
    struct node*itr=*head;
    //iterating till the tail
    while(itr->next->next)
    {
        itr=itr->next;
    }
    temp=itr->next;
    itr->next = NULL;//setting last nodes next field to null so that its deleted
    free(temp);
}
void display_head(struct node** head)
{
    //checking whether list is empty or not
    if(!(*head))
    {
        printf("\nEmpty list\n");
        return;
    }
    //printing while traversing till last node
    struct node *itr=*head;
    while(itr)
    {
        printf("%d ----> ", itr->data);
        itr=itr->next;
    }
    printf("NULL\n");//to indicate the address stored by last node
}
void display_tail(struct node** head)
{
    //checking whether list it empty or not
    if(!(*head))
    {
        return;
    }
    //recurrively calling the function
    display_tail(&((*head)->next));
    //printing the node
    printf("%d --->", (*head)->data);//address of first node will be printed as data in this case
}
int main()
{
    struct node * head=NULL;
    char ch;
    int choice,data,value;
    struct node* node_address=NULL;
    do
    {
       printf("Enter your choice:\n\n1-Insert at beginning\n2-insert at end\n3-insert before a given value\n4-insert after a given value\n5-delete a node by value\n6-delete a node by address\n7-delete first node\n8-delete last node\n9-display node from head to tail\n10-display node form tail to head\n11-isnert_after_first: \n");
       scanf("%d",&choice);
       switch (choice)
       {
            case 1:
            {
                printf("\nEnter the data to be inserted at the beginning: ");
                scanf("%d",&data);
                insert_at_beginning(&head,data);
                break;
            }
            case 2:
            {
                printf("\nEnter the data to be inserted at the end: ");
                scanf("%d",&data);
                insert_at_end(&head,data);
                break;
            }
            case 3:
            {
                printf("\nEnter the data to be inserted: ");
                scanf("%d",&data );
                printf("\nInsert before which value? ");//inserting before that value
                scanf("%d",&value);
                insert_before_k(&head,data,value);
                break;
            }
            case 4:
            {
               //inserting after k
               printf("\nEnter the data to be inserted : ");
               scanf("%d", &data);             
               printf("\nAfter what number you want to enter this element?");
               scanf("%d",&value);
               insert_after_k(&head,data,value);
               break;
            }
            case 5:
            {
                //deleting a node by value
                printf("\nEnter the value of the node you want to delete: ");
                scanf("%d",&value);
                delete_by_value(&head,value);
                break;
            }
            case 6:
            {
                //deleting a node by address
                printf("\nEnter the address of the node to be deleted: ");
                scanf("%p",&node_address);
                delete_by_address(&head,node_address);
                break;
            }
            case 7 :
            {
                //delete first node
                delete_head(&head);
                break;
            }
            case 8:
            {
                //delete last node
                delete_tail(&head);
                break;
            }
            case 9:
            {
                //display node from head to tail
                display_head(&head);
                break;
            }
            case 10:
            {
                //display node from tail to head
                display_tail(&head);
                break;
            }
            case 11:
            {
                printf("\nEnter the data to be inserted: ");
                scanf("%d",&data);
                insert_before_last(&head,data);
                break;
            }
            default:
            {
                printf("\nInvalid argument\n");
            }
        }
        printf("\nDo you want to continue: Y-yes or N-no: ");
        scanf(" %c",&ch);
    }while(ch=='y'||ch=='Y');
    while (head) 
    {
        struct node* temp = head;
        head = head->next;
        free(temp);
    }
    return 0;
}
