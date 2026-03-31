-- Revert: schemas/agentic_db_status_public/tables/app_levels/columns/description/column


ALTER TABLE "agentic_db_status_public".app_levels 
  DROP COLUMN description RESTRICT;


