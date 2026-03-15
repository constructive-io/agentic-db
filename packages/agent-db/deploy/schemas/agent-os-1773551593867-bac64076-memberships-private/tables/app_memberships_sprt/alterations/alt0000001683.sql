-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/alterations/alt0000001683
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt IS E'Security Predicate Resolution Table (SPRT). Denormalized lookup table used by RLS policies for fast permission checks without recursive queries';

