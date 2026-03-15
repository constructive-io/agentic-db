-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/constraints/app_profiles_slug_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ADD CONSTRAINT app_profiles_slug_key 
    UNIQUE (slug);

