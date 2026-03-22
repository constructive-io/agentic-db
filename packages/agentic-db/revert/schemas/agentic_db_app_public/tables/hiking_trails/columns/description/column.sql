-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/description/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN description RESTRICT;


