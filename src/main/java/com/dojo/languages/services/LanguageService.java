package com.dojo.languages.services;

import com.dojo.languages.models.Language;
import com.dojo.languages.repositories.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LanguageService {

    @Autowired
    LanguageRepository languageRepository;

    public List<Language> allLanguages() {
        return languageRepository.findAll();
    }

    public Language createLanguage(Language l) {
        return languageRepository.save(l);
    }

    public Language findLanguage(Long id) {
        Optional<Language> optionalLanguage = languageRepository.findById(id);
        if(optionalLanguage.isPresent()) {
            return optionalLanguage.get();
        } else {
            return null;
        }
    }

    public Language updateLanguage(Language language) {
        return languageRepository.save(language);
    }

    public void deleteLanguage(Long id) {
        languageRepository.deleteById(id);
    }
}
