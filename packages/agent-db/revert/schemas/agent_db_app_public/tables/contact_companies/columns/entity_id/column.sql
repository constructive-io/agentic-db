-- Revert: schemas/agent_db_app_public/tables/contact_companies/columns/entity_id/column


ALTER TABLE agent_db_app_public.contact_companies 
  DROP COLUMN entity_id RESTRICT;


