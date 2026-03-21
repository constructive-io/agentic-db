-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/entity_id/alterations/alt0000004748


ALTER TABLE agentic_db_app_public.expense_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


