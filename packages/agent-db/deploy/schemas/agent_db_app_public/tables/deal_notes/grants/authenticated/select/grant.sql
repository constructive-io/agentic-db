-- Deploy: schemas/agent_db_app_public/tables/deal_notes/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_notes/table
-- requires: schemas/agent_db_app_public/tables/company_notes/policies/auth_del_entity_membership/policy


GRANT SELECT ON "agent_db_app_public".deal_notes TO authenticated;

