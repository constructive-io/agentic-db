-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000001903
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults.entity_id IS 'References the entity these membership defaults apply to';

