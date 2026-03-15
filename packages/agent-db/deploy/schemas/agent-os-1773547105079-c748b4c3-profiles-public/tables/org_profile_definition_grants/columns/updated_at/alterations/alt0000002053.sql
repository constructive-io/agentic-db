-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/updated_at/alterations/alt0000002053
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

