-- Revert: schemas/agentic_db_app_public/tables/events/constraints/events_pkey/constraint


ALTER TABLE "agentic_db_app_public".events 
  DROP CONSTRAINT events_pkey;


