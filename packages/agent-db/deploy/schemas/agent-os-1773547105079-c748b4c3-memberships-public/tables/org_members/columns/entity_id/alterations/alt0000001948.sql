-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/entity_id/alterations/alt0000001948
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".org_members.entity_id IS E'References the entity (org or group) this member belongs to';

