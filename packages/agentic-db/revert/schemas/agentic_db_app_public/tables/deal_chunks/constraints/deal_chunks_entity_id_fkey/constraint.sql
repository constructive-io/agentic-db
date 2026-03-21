-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/constraints/deal_chunks_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".deal_chunks 
  DROP CONSTRAINT deal_chunks_entity_id_fkey;


