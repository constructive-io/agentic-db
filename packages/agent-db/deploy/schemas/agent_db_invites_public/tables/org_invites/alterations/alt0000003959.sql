-- Deploy: schemas/agent_db_invites_public/tables/org_invites/alterations/alt0000003959
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


COMMENT ON TABLE "agent_db_invites_public".org_invites IS E'Invitation records sent to prospective members via email, with token-based redemption and expiration';

