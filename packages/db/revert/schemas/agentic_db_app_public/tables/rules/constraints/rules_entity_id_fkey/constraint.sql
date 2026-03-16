-- Revert: schemas/agentic_db_app_public/tables/rules/constraints/rules_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".rules 
  DROP CONSTRAINT rules_entity_id_fkey;


