-- Revert: schemas/agentic_db_app_public/tables/goals/columns/description/column


ALTER TABLE agentic_db_app_public.goals 
  DROP COLUMN description RESTRICT;


