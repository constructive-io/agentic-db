-- Revert: schemas/agentic_db_app_public/tables/workflows/constraints/workflows_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".workflows 
  DROP CONSTRAINT workflows_entity_id_fkey;


