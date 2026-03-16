-- Deploy: schemas/agent_db_app_public/tables/event_notes/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_notes/table
-- requires: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


GRANT DELETE ON "agent_db_app_public".event_notes TO authenticated;

