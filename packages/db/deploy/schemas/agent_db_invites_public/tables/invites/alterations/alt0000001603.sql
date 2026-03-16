-- Deploy: schemas/agent_db_invites_public/tables/invites/alterations/alt0000001603
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


COMMENT ON TABLE "agent_db_invites_public".invites IS E'Invitation records sent to prospective members via email, with token-based redemption and expiration';

