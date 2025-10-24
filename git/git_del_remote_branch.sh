for b in $(git branch -r | sed 's|origin/||' | sort -u); do
  case "$b" in
    HEAD|lineage-22.2-caf-sdm845|lineage-22.2-caf-sm8150|lineage-22.2-caf-sm8150-419|lineage-22.2-caf-sm8250|lineage-23.0-caf-sm8150|lineage-23.0-caf-sm8150-419)
      echo "Keeping origin/$b"
      ;;
    *)
      echo "Deleting origin/$b"
      git push origin --delete "$b"
      ;;
  esac
done
