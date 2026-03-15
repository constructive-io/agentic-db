-- Deploy: schemas/agent_db_status_public/procedures/member_steps_required/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table



CREATE FUNCTION agent_db_status_public.member_steps_required (
    vlevel text,
    ventity_id uuid,
    vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS SETOF agent_db_status_public.org_level_requirements
AS $CODEZ$
BEGIN
  RETURN QUERY
  SELECT 
      org_level_requirements.id,
      org_level_requirements.name,
      org_level_requirements.level,
      org_level_requirements.description,
      -1*(coalesce(org_achievements.count,0)-org_level_requirements.required_count) as required_count,
      org_level_requirements.priority,
      org_level_requirements.created_at,
      org_level_requirements.updated_at
    FROM
      agent_db_status_public.org_level_requirements 
    FULL OUTER JOIN agent_db_status_public.org_achievements ON (
      org_achievements.name = org_level_requirements.name
      AND org_achievements.actor_id = vrole_id
      AND org_achievements.entity_id = ventity_id
    )	
    JOIN agent_db_status_public.org_levels ON (org_level_requirements.level = org_levels.name)
  WHERE
    org_level_requirements.level = vlevel
    AND -1*(coalesce(org_achievements.count,0)-org_level_requirements.required_count) > 0
  ORDER BY priority ASC;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION agent_db_status_public.member_steps_required TO authenticated;

