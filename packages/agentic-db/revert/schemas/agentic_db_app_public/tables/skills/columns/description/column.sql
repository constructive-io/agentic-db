-- Revert: schemas/agentic_db_app_public/tables/skills/columns/description/column


ALTER TABLE agentic_db_app_public.skills 
  DROP COLUMN description RESTRICT;


