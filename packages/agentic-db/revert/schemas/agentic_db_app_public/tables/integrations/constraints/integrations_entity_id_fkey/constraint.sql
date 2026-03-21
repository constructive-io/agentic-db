-- Revert: schemas/agentic_db_app_public/tables/integrations/constraints/integrations_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.integrations 
  DROP CONSTRAINT integrations_entity_id_fkey;


