-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/created_at/alterations/alt0000001832
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_definition_grants/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_definition_grants 
  ALTER COLUMN created_at SET DEFAULT now();

