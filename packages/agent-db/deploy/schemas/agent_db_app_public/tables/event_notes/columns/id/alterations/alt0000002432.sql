-- Deploy: schemas/agent_db_app_public/tables/event_notes/columns/id/alterations/alt0000002432
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_notes/table
-- requires: schemas/agent_db_app_public/tables/event_notes/columns/id/column
-- requires: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".event_notes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

