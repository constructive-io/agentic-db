-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/alterations/alt0000001207


ALTER TABLE agent_db_app_public.contact_phones 
  ALTER COLUMN updated_at DROP NOT NULL;


