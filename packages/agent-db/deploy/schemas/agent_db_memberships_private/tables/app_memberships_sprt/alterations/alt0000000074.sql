-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/alterations/alt0000000074
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/table


COMMENT ON TABLE agent_db_memberships_private.app_memberships_sprt IS E'Security Predicate Resolution Table (SPRT). Denormalized lookup table used by RLS policies for fast permission checks without recursive queries';

