-- Revert: schemas/agent_db_app_public/tables/company_images/columns/entity_id/alterations/alt0000000994


ALTER TABLE agent_db_app_public.company_images 
  ALTER COLUMN entity_id DROP NOT NULL;


