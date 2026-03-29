-- Deploy: schemas/agentic_db_app_public/tables/event_notes/columns/id/alterations/alt0000006192
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.event_notes 
    ALTER COLUMN id SET DEFAULT uuidv7();

