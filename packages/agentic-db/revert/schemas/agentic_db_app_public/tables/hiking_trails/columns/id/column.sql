-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/id/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP COLUMN id RESTRICT;


