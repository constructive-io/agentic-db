-- Revert: schemas/agentic_db_app_public/tables/task_notes/constraints/task_notes_pkey/constraint


ALTER TABLE "agentic_db_app_public".task_notes 
  DROP CONSTRAINT task_notes_pkey;


