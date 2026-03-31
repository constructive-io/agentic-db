-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/occurred_at/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN occurred_at RESTRICT;


