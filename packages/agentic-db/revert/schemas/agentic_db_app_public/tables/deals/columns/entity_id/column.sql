-- Revert: schemas/agentic_db_app_public/tables/deals/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN entity_id RESTRICT;


