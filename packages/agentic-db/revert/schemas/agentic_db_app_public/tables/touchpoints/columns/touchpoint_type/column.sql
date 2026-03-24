-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/touchpoint_type/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN touchpoint_type RESTRICT;


