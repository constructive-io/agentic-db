-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  ADD COLUMN created_at timestamptz;

