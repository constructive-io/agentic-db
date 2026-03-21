-- Deploy: schemas/agentic_db_app_public/tables/event_venues/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


GRANT INSERT ON "agentic_db_app_public".event_venues TO authenticated;

