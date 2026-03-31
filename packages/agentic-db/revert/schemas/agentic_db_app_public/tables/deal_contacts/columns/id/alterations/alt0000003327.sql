-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000003327


ALTER TABLE agentic_db_app_public.deal_contacts 
  ALTER COLUMN id DROP NOT NULL;


