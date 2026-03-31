-- Revert: schemas/agentic_db_app_public/tables/event_venues/constraints/event_venues_pkey/constraint


ALTER TABLE agentic_db_app_public.event_venues 
  DROP CONSTRAINT event_venues_pkey;


