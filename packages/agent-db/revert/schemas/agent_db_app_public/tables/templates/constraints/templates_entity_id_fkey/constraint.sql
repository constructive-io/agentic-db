-- Revert: schemas/agent_db_app_public/tables/templates/constraints/templates_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".templates 
  DROP CONSTRAINT templates_entity_id_fkey;


