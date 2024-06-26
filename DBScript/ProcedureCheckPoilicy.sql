USE [MIP]
GO

/****** Object:  StoredProcedure [dbo].[CheckExistingPolicy]    Script Date: 4/3/2024 7:12:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Prashant
-- Create date: 26/10/2023
-- Description:	Saves data to database
-- =============================================
-- execute [dbo].[CheckExistingPolicy] 'KH89096'
CREATE PROCEDURE [dbo].[CheckExistingPolicy]
	-- Add the parameters for the stored procedure here
@policynumber	varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @count int =0;
	select @count= count(Mi_Id) from dbo.Mi_Table where policynumber = @policynumber and id is not null

	if(@count = 0)
	begin
	select top 1

   '404' [Mi_Id]
	,'-' [id]
	,'-' [policynumber] 
	,'-' [Comp_Code] 
	,'-' [Product1] 
	,'-' [Product] 
	,'-' [title] 
	,'-' [surname] 
	,'-' [firstname] 
	,'-' [id_number] 
	,'-' [id_type] 
	,'-' [Date_Of_Birth] 
	,'-' [gender] 
	,'-' [Alternative_Number] 
	,'-' [Cell_number] 
	,'-' [email] 
	,'-' [language] 
	,'-' [Postal_Address_Line_1] 
	,'-' [Postal_Address_Line_2] 
	,'-' [Suburb] 
	,'-' [City] 
	,'-' [Postal_Code] 
	,'-' [Inception_Date] 
	,'-' [Broker_Number] 
	,'-' [Mandate_Reference] 
	,'-' [Account_Type] 
	,'-' [Account_Number] 
	,'-' [BranchCode] 
	,'-' [Account_Holder_Name] 
	,'-' [Debit_Order_Date] 
	,'-' [account_type_clm] 
	,'-' [account_num_clm] 
	,'-' [branch_code_clm] 
	,'-' [account_name_clm] 
	,'-' [Additional_Buy_Up] 
	,'-' [Premiums] 
	,'-' [dep1name] 
	,'-' [Dep_1_Surname] 
	,'-' [Dep_1_unique] 
	,'-' [Dep_1_Date_of_Birth] 
	,'-' [Dep_1_Gender] 
	,'-' [Dep_1_Type] 
	,'-' [dep_relationship_1] 
	,'-' [dep_additional_buy_up_1] 
	,'-' [dep2name] 
	,'-' [Dep_2_Surname] 
	,'-' [Dep_2_unique] 
	,'-' [Dep_2_Date_of_Birth] 
	,'-' [Dep_2_Gender] 
	,'-' [Dep_2_Type] 
	,'-' [dep_relationship_2] 
	,'-' [dep_additional_buy_up_2] 
	,'-' [dep3name] 
	,'-' [Dep_3_Surname] 
	,'-' [Dep_3_unique] 
	,'-' [Dep_3_Date_of_Birth] 
	,'-' [Dep_3_Gender] 
	,'-' [Dep_3_Type] 
	,'-' [dep_relationship_3] 
	,'-' [dep_additional_buy_up_3] 
	,'-' [dep4name] 
	,'-' [Dep_4_Surname] 
	,'-' [Dep_4_unique] 
	,'-' [Dep_4_Date_of_Birth] 
	,'-' [Dep_4_Gender] 
	,'-' [Dep_4_Type] 
	,'-' [dep_relationship_4] 
	,'-' [dep_additional_buy_up_4] 
	,'-' [dep5name] 
	,'-' [Dep_5_Surname] 
	,'-' [Dep_5_unique] 
	,'-' [Dep_5_Date_of_Birth] 
	,'-' [Dep_5_Gender] 
	,'-' [Dep_5_Type] 
	,'-' [dep_relationship_5] 
	,'-' [dep_additional_buy_up_5] 
	,'-' [dep6name] 
	,'-' [Dep_6_Surname] 
	,'-' [Dep_6_unique] 
	,'-' [Dep_6_Date_of_Birth] 
	,'-' [Dep_6_Gender] 
	,'-' [Dep_6_Type] 
	,'-' [dep_relationship_6] 
	,'-' [dep_additional_buy_up_6] 
	,'-' [dep7name] 
	,'-' [Dep_7_Surname] 
	,'-' [Dep_7_unique] 
	,'-' [Dep_7_Date_of_Birth] 
	,'-' [Dep_7_Gender] 
	,'-' [Dep_7_Type] 
	,'-' [dep_relationship_7] 
	,'-' [dep_additional_buy_up_7] 
	,'-' [dep8name] 
	,'-' [Dep_8_Surname] 
	,'-' [Dep_8_unique] 
	,'-' [Dep_8_Date_of_Birth] 
	,'-' [Dep_8_Gender] 
	,'-' [Dep_8_Type] 
	,'-' [dep_relationship_8] 
	,'-' [dep_additional_buy_up_8] 
	,'-' [dep9name] 
	,'-' [Dep_9_Surname] 
	,'-' [Dep_9_unique] 
	,'-' [Dep_9_Date_of_Birth] 
	,'-' [Dep_9_Gender] 
	,'-' [Dep_9_Type] 
	,'-' [dep_relationship_9] 
	,'-' [dep_additional_buy_up_9] 
	,'-' [dep10name] 
	,'-' [Dep_10_Surname] 
	,'-' [Dep_10_unique] 
	,'-' [Dep_10_Date_of_Birth] 
	,'-' [Dep_10_Gender] 
	,'-' [Dep_10_Type] 
	,'-' [dep_relationship_10] 
	,'-' [dep_additional_buy_up_10] 
	,'-' [compCode] 
	,GETDATE() [CreatedDate]  
   
	end
	else
	begin
	select top 1

   [Mi_Id]
	,[id]
	,[policynumber] 
	,[Comp_Code] 
	,[Product1] 
	,[Product] 
	,[title] 
	,[surname] 
	,[firstname] 
	,[id_number] 
	,[id_type] 
	,[Date_Of_Birth] 
	,[gender] 
	,[Alternative_Number] 
	,[Cell_number] 
	,[email] 
	,[language] 
	,[Postal_Address_Line_1] 
	,[Postal_Address_Line_2] 
	,[Suburb] 
	,[City] 
	,[Postal_Code] 
	,[Inception_Date] 
	,[Broker_Number] 
	,[Mandate_Reference] 
	,[Account_Type] 
	,[Account_Number] 
	,[BranchCode] 
	,[Account_Holder_Name] 
	,[Debit_Order_Date] 
	,[account_type_clm] 
	,[account_num_clm] 
	,[branch_code_clm] 
	,[account_name_clm] 
	,[Additional_Buy_Up] 
	,[Premiums] 
	,[dep1name] 
	,[Dep_1_Surname] 
	,[Dep_1_unique] 
	,[Dep_1_Date_of_Birth] 
	,[Dep_1_Gender] 
	,[Dep_1_Type] 
	,[dep_relationship_1] 
	,[dep_additional_buy_up_1] 
	,[dep2name] 
	,[Dep_2_Surname] 
	,[Dep_2_unique] 
	,[Dep_2_Date_of_Birth] 
	,[Dep_2_Gender] 
	,[Dep_2_Type] 
	,[dep_relationship_2] 
	,[dep_additional_buy_up_2] 
	,[dep3name] 
	,[Dep_3_Surname] 
	,[Dep_3_unique] 
	,[Dep_3_Date_of_Birth] 
	,[Dep_3_Gender] 
	,[Dep_3_Type] 
	,[dep_relationship_3] 
	,[dep_additional_buy_up_3] 
	,[dep4name] 
	,[Dep_4_Surname] 
	,[Dep_4_unique] 
	,[Dep_4_Date_of_Birth] 
	,[Dep_4_Gender] 
	,[Dep_4_Type] 
	,[dep_relationship_4] 
	,[dep_additional_buy_up_4] 
	,[dep5name] 
	,[Dep_5_Surname] 
	,[Dep_5_unique] 
	,[Dep_5_Date_of_Birth] 
	,[Dep_5_Gender] 
	,[Dep_5_Type] 
	,[dep_relationship_5] 
	,[dep_additional_buy_up_5] 
	,[dep6name] 
	,[Dep_6_Surname] 
	,[Dep_6_unique] 
	,[Dep_6_Date_of_Birth] 
	,[Dep_6_Gender] 
	,[Dep_6_Type] 
	,[dep_relationship_6] 
	,[dep_additional_buy_up_6] 
	,[dep7name] 
	,[Dep_7_Surname] 
	,[Dep_7_unique] 
	,[Dep_7_Date_of_Birth] 
	,[Dep_7_Gender] 
	,[Dep_7_Type] 
	,[dep_relationship_7] 
	,[dep_additional_buy_up_7] 
	,[dep8name] 
	,[Dep_8_Surname] 
	,[Dep_8_unique] 
	,[Dep_8_Date_of_Birth] 
	,[Dep_8_Gender] 
	,[Dep_8_Type] 
	,[dep_relationship_8] 
	,[dep_additional_buy_up_8] 
	,[dep9name] 
	,[Dep_9_Surname] 
	,[Dep_9_unique] 
	,[Dep_9_Date_of_Birth] 
	,[Dep_9_Gender] 
	,[Dep_9_Type] 
	,[dep_relationship_9] 
	,[dep_additional_buy_up_9] 
	,[dep10name] 
	,[Dep_10_Surname] 
	,[Dep_10_unique] 
	,[Dep_10_Date_of_Birth] 
	,[Dep_10_Gender] 
	,[Dep_10_Type] 
	,[dep_relationship_10] 
	,[dep_additional_buy_up_10] 
	,[compCode] 
	,[CreatedDate]  
	from dbo.Mi_Table where policynumber = @policynumber and id is not null
	end
   
END
GO


