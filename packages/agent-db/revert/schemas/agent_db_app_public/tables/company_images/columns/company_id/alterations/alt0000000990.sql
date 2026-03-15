-- Revert: schemas/agent_db_app_public/tables/company_images/columns/company_id/alterations/alt0000000990


ALTER TABLE agent_db_app_public.company_images 
  ALTER COLUMN company_id DROP NOT NULL;


