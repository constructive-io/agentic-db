-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/alterations/alt0000000324
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table


COMMENT ON TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt IS E'Security Predicate Resolution Table (SPRT). Denormalized lookup table used by RLS policies for fast permission checks without recursive queries';

