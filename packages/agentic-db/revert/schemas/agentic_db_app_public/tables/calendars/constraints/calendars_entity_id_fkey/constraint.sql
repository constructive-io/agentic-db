-- Revert: schemas/agentic_db_app_public/tables/calendars/constraints/calendars_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".calendars 
  DROP CONSTRAINT calendars_entity_id_fkey;


