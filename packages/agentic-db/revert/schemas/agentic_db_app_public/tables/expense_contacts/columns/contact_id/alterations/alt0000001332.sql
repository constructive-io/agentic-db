-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/alterations/alt0000001332


ALTER TABLE agentic_db_app_public.expense_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


