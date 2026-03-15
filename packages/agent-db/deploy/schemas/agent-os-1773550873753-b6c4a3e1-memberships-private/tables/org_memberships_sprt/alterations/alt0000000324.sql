-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/alterations/alt0000000324
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/table


COMMENT ON TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt IS E'Security Predicate Resolution Table (SPRT). Denormalized lookup table used by RLS policies for fast permission checks without recursive queries';

