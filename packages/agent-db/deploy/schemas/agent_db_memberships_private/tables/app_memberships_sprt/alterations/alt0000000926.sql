-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/alterations/alt0000000926
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/table


COMMENT ON TABLE "agent_db_memberships_private".app_memberships_sprt IS E'Security Predicate Resolution Table (SPRT). Denormalized lookup table used by RLS policies for fast permission checks without recursive queries';

