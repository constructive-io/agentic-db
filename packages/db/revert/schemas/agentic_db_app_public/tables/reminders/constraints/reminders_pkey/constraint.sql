-- Revert: schemas/agentic_db_app_public/tables/reminders/constraints/reminders_pkey/constraint


ALTER TABLE "agentic_db_app_public".reminders 
  DROP CONSTRAINT reminders_pkey;


