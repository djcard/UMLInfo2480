<!---
  Created by djcar on 2/8/2017.
--->
<legend>My Objects</legend>
<cfset currentBook={
title:"The Grapes of Wrath",
media:"book",
binding:"paperback",
price:"7.95",
inStock:true,
forSale:true
}>

<cfset book2=StructNew() />
<cfset book2.title="Great Expectations" />
<cfset book2.media="book" />
<cfset book2.binding="paperback" />
<cfset book2.price="10.50">
<cfset book2.inStock=true>
<cfset book2.forSale=true>
<cfdump var="#book2#" label="book2">

<cfdump var="#currentBook#" label="CurrentBook">

<cfset myBookArray=ArrayNew(1)>
<cfset myBookArray[1]=currentBook>
<cfset myBookArray[2]=book2>
<cfdump var="#myBookArray#" label="myBookArray">

<cfloop array="#myBookArray#" index="currBook">
    <cfoutput>The Price of #currBook.title# is #currBook.price#</cfoutput><br/>
</cfloop>