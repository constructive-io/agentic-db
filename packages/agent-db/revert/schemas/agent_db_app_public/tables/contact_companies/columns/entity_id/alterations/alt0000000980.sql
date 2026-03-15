-- Revert: schemas/agent_db_app_public/tables/contact_companies/columns/entity_id/alterations/alt0000000980


ALTER TABLE agent_db_app_public.contact_companies 
  ALTER COLUMN entity_id DROP NOT NULL;


