-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/constraints/rule_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP CONSTRAINT rule_chunks_entity_id_fkey;


