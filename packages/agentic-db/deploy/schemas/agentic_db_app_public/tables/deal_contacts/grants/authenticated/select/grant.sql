-- Deploy: schemas/agentic_db_app_public/tables/deal_contacts/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/policies/auth_del_entity_membership/policy


GRANT SELECT ON agentic_db_app_public.deal_contacts TO authenticated;

